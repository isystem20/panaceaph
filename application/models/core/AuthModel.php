<?php
/**
* 
*/
class AuthModel extends CI_Model
{
	

	public function CheckLogin($username) {
		$this->db->select('u.*, c.Id as companyId, c.Active as companyActive, c.CompanyName as companyName, i.id as industryId, "" as access');
		$this->db->from('system_users as u');
		$this->db->join('system_companies as c','c.Id = u.CompanyId','left outer');
		$this->db->join('system_industries as i','i.Id = c.IndustryType','left outer');
		$this->db->where('u.LoginName', $username);

		$query = $this->db->get();
		if ($query->num_rows() > 0) {
			$result = $query->result();

			foreach ($result as &$object)
			{

				$this->db->flush_cache();

				$Company = $object->companyId;
				$User = $object->id;

				$this->db->select('*');
				$this->db->from('system_user_modules');
				$this->db->where('CompanyId',$Company);
				$this->db->where('UserId',$User);
				$this->db->where('Active','1');
				$access_result = $this->db->get()->row();

				$object->access = $access_result;
			}
			// print_r($result->row());
			// die();
			return $result;
		}
		else {
			return FALSE;
		}
	}

}

?>